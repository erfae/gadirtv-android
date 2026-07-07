.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;
.super Ljava/lang/Object;
.source "HomeFeedTvShowsRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;",
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
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "remoteSourceProvider",
            "appExecutorsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "remoteSourceProvider",
            "appExecutorsProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dao",
            "remoteSource",
            "appExecutors"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;
    .locals 4

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/tvshow/data/HomeFeedTvShowsRepository;

    move-result-object v0

    return-object v0
.end method
