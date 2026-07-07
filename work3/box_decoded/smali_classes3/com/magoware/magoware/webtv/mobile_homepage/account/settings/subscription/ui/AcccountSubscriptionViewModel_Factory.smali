.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;
.super Ljava/lang/Object;
.source "AcccountSubscriptionViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;",
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
            "repositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;->repositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repository"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;
    .locals 2

    .line 22
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/data/AccountSubscriptionRepository;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AcccountSubscriptionViewModel;

    move-result-object v0

    return-object v0
.end method
