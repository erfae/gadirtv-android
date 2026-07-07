.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;
.super Lcom/magoware/magoware/webtv/api/BaseDataSource;
.source "HomeFeedTvShowsRemote.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0005\u001a\u00020\u0003H\u00c2\u0003J\u0013\u0010\u0006\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u00d6\u0003J \u0010\u000b\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0\u000e0\r0\u000c2\u0006\u0010\u0010\u001a\u00020\u0011J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0011H\u00d6\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
        "Lcom/magoware/magoware/webtv/api/BaseDataSource;",
        "service",
        "Lcom/magoware/magoware/webtv/api/HomePageService;",
        "(Lcom/magoware/magoware/webtv/api/HomePageService;)V",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "fetchData",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/magoware/magoware/webtv/api/ApiResponse;",
        "Lcom/magoware/magoware/webtv/api/ResponseObject;",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
        "url",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final service:Lcom/magoware/magoware/webtv/api/HomePageService;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/api/BaseDataSource;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    return-void
.end method

.method private final component1()Lcom/magoware/magoware/webtv/api/HomePageService;
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;Lcom/magoware/magoware/webtv/api/HomePageService;ILjava/lang/Object;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->copy(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    invoke-direct {v0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    iget-object p1, p1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

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
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShows;",
            ">;>;>;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-interface {v0, p1}, Lcom/magoware/magoware/webtv/api/HomePageService;->getHomeFeedTvShows(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFeedTvShowsRemote(service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;->service:Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
