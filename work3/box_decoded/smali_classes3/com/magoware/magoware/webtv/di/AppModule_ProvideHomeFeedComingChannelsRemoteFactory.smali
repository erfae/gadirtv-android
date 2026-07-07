.class public final Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideHomeFeedComingChannelsRemoteFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;",
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

.field private final homePageServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/magoware/magoware/webtv/di/AppModule;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "homePageServiceProvider",
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    .line 26
    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->homePageServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->accountServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "module",
            "homePageServiceProvider",
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)",
            "Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHomeFeedComingChannelsRemote(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "homePageService",
            "accountService"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/AppModule;->provideHomeFeedComingChannelsRemote(Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->homePageServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/api/HomePageService;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->accountServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/api/AccountService;

    invoke-static {v0, v1, v2}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->provideHomeFeedComingChannelsRemote(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/api/HomePageService;Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedComingChannelsRemoteFactory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/coming_channels/data/HomeFeedComingChannelsRemote;

    move-result-object v0

    return-object v0
.end method
