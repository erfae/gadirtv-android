.class public final Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "homePageServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    .line 22
    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->homePageServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "homePageServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;)",
            "Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHomeFeedChannelsTrendingRemote(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "homePageService"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/AppModule;->provideHomeFeedChannelsTrendingRemote(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->homePageServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->provideHomeFeedChannelsTrendingRemote(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideHomeFeedChannelsTrendingRemoteFactory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/channels_trending/data/HomeFeedChannelsTrendingRemote;

    move-result-object v0

    return-object v0
.end method
