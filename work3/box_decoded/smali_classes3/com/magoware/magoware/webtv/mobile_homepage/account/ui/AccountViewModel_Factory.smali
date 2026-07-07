.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;
.super Ljava/lang/Object;
.source "AccountViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final remoteSourceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;",
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
            "remoteSourceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteSourceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteSource"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;
    .locals 2

    .line 20
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;->remoteSourceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;-><init>(Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountViewModel;

    move-result-object v0

    return-object v0
.end method
