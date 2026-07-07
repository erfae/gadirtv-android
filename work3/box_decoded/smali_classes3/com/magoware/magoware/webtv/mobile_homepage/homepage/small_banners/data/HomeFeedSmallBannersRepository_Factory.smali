.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;
.super Ljava/lang/Object;
.source "HomeFeedSmallBannersRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;",
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
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;",
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
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;
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
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;
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

    .line 42
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;
    .locals 4

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;

    iget-object v3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->appExecutorsProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;

    invoke-direct {v0, v1, v2, v3}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersDao;Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;Lcom/magoware/magoware/webtv/mobile_homepage/AppExecutors;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/small_banners/data/HomeFeedSmallBannersRepository;

    move-result-object v0

    return-object v0
.end method
