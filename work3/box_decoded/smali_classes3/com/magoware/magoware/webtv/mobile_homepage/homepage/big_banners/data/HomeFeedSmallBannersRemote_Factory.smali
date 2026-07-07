.class public final Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;
.super Ljava/lang/Object;
.source "HomeFeedSmallBannersRemote_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;->serviceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serviceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/HomePageService;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/api/HomePageService;)Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;
    .locals 2

    .line 21
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;->serviceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/api/HomePageService;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;-><init>(Lcom/magoware/magoware/webtv/api/HomePageService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/big_banners/data/HomeFeedSmallBannersRemote;

    move-result-object v0

    return-object v0
.end method
