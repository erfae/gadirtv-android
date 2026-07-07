.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;
.super Ljava/lang/Object;
.source "AccountSubscriptionRepository_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final daoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;",
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
            "remoteProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->remoteProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "daoProvider",
            "remoteProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dao",
            "remote"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    invoke-direct {v0, p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;
    .locals 3

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->daoProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->remoteProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;

    invoke-direct {v0, v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionDao;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRemote;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    move-result-object v0

    return-object v0
.end method
