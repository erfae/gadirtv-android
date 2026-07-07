.class public final Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;
.super Ljava/lang/Object;
.source "NewsFeedRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "remoteSourceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "remoteSourceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;)Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dao",
            "remoteSource"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;
    .locals 3

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedDao;Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRemote;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/news/data/NewsFeedRepository;

    move-result-object v0

    return-object v0
.end method
