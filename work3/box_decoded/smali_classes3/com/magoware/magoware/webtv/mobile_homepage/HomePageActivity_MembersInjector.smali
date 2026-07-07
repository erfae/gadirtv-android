.class public final Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;
.super Ljava/lang/Object;
.source "HomePageActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
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
            "dispatchingAndroidInjectorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatchingAndroidInjectorProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;)",
            "Ldagger/MembersInjector<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;

    invoke-direct {v0, p0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectDispatchingAndroidInjector(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;Ldagger/android/DispatchingAndroidInjector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "dispatchingAndroidInjector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;->injectDispatchingAndroidInjector(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;Ldagger/android/DispatchingAndroidInjector;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "instance"
        }
    .end annotation

    .line 9
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity_MembersInjector;->injectMembers(Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;)V

    return-void
.end method
