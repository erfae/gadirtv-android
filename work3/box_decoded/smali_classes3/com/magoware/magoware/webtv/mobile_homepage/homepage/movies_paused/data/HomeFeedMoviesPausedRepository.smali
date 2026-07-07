.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;
.super Ljava/lang/Object;
.source "HomeFeedMoviesPausedRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;",
        "",
        "dao",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;",
        "mediaRepository",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
        "remoteSource",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;",
        "appExecutors",
        "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
        "(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V",
        "moviesPaused",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/data/Resource;",
        "",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
        "url",
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
.field private final appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

.field private final dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

.field private final mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

.field private final remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dao"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteSource"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appExecutors"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;

    iput-object p4, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    return-void
.end method

.method public static final synthetic access$getDao$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->dao:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedDao;

    return-object p0
.end method

.method public static final synthetic access$getMediaRepository$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    return-object p0
.end method

.method public static final synthetic access$getRemoteSource$p(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->remoteSource:Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRemote;

    return-object p0
.end method


# virtual methods
.method public final moviesPaused(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/magoware/magoware/webtv/data/Resource<",
            "Ljava/util/List<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPaused;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository$moviesPaused$1;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;->appExecutors:Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, p0, p1, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository$moviesPaused$1;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository;Ljava/lang/String;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    .line 38
    invoke-virtual {v0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/movies_paused/data/HomeFeedMoviesPausedRepository$moviesPaused$1;->asLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
