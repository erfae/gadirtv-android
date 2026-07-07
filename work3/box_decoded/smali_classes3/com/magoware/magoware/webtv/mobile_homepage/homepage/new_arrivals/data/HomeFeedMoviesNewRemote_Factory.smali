.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;
.super Ljava/lang/Object;
.source "HomeFeedMoviesNewRemote_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;",
        ">;"
    }
.end annotation


# instance fields
.field private final accountServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
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
            "serviceProvider",
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;->serviceProvider:Ljavax/inject/Provider;

    .line 21
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;->accountServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serviceProvider",
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "service",
            "accountService"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;
    .locals 3

    .line 26
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/api/HomePageService;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;->accountServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/api/AccountService;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/new_arrivals/data/HomeFeedMoviesNewRemote;

    move-result-object v0

    return-object v0
.end method
