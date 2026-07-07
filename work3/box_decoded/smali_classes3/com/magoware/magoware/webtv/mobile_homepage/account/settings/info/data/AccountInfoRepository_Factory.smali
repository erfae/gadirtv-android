.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;
.super Ljava/lang/Object;
.source "AccountInfoRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
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
            "remoteProvider",
            "daoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->remoteProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remoteProvider",
            "daoProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remote",
            "dao"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;
    .locals 3

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->remoteProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRemote;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoDao;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/data/AccountInfoRepository;

    move-result-object v0

    return-object v0
.end method
