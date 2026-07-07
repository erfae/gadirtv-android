.class public final Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;
.super Ljava/lang/Object;
.source "TvHomePageActivity_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
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

.field private final mediaRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final viewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dispatchingAndroidInjectorProvider",
            "viewModelFactoryProvider",
            "mediaRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p3, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->mediaRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dispatchingAndroidInjectorProvider",
            "viewModelFactoryProvider",
            "mediaRepositoryProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectDispatchingAndroidInjector(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Ldagger/android/DispatchingAndroidInjector;)V
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
            "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->dispatchingAndroidInjector:Ldagger/android/DispatchingAndroidInjector;

    return-void
.end method

.method public static injectMediaRepository(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "mediaRepository"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->mediaRepository:Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    return-void
.end method

.method public static injectViewModelFactory(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "viewModelFactory"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;->viewModelFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->dispatchingAndroidInjectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/android/DispatchingAndroidInjector;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->injectDispatchingAndroidInjector(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Ldagger/android/DispatchingAndroidInjector;)V

    .line 40
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->viewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->injectViewModelFactory(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 41
    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->mediaRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->injectMediaRepository(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;Lcom/magoware/magoware/webtv/mobile_homepage/tv/android_tv_app_channels/models/TvMediaRepository;)V

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

    .line 11
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity_MembersInjector;->injectMembers(Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;)V

    return-void
.end method
