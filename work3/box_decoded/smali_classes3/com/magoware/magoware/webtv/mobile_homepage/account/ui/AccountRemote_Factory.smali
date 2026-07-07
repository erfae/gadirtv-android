.class public final Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;
.super Ljava/lang/Object;
.source "AccountRemote_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;->accountServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountServiceProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/api/AccountService;",
            ">;)",
            "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/magoware/magoware/webtv/api/AccountService;)Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "accountService"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;
    .locals 2

    .line 21
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;->accountServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/magoware/magoware/webtv/api/AccountService;

    invoke-direct {v0, v1}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;-><init>(Lcom/magoware/magoware/webtv/api/AccountService;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote_Factory;->get()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountRemote;

    move-result-object v0

    return-object v0
.end method
