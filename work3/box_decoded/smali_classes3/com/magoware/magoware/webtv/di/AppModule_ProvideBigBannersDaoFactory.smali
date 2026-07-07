.class public final Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;
.super Ljava/lang/Object;
.source "AppModule_ProvideBigBannersDaoFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;",
        ">;"
    }
.end annotation


# instance fields
.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/data/AppDatabase;",
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
            "dbProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/data/AppDatabase;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    .line 21
    iput-object p2, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->dbProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "dbProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/AppModule;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/data/AppDatabase;",
            ">;)",
            "Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;-><init>(Lcom/magoware/magoware/webtv/di/AppModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBigBannersDao(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "db"
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/AppModule;->provideBigBannersDao(Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->module:Lcom/magoware/magoware/webtv/di/AppModule;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->dbProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/data/AppDatabase;

    invoke-static {v0, v1}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->provideBigBannersDao(Lcom/magoware/magoware/webtv/di/AppModule;Lcom/magoware/magoware/webtv/data/AppDatabase;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/di/AppModule_ProvideBigBannersDaoFactory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedBigBannersDao;

    move-result-object v0

    return-object v0
.end method
