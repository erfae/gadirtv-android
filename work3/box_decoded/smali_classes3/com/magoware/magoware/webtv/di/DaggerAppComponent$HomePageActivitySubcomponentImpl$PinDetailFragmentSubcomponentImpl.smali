.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment$PinDetailFragmentSubcomponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PinDetailFragmentSubcomponentImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$1",
            "arg0"
        }
    .end annotation

    .line 864
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1, p2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    return-void
.end method

.method private injectPinDetailFragment(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    iget-object v0, v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;->this$0:Lcom/magoware/magoware/webtv/di/DaggerAppComponent;

    invoke-static {v0}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent;->access$2600(Lcom/magoware/magoware/webtv/di/DaggerAppComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-static {p1, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment_MembersInjector;->injectViewModelFactory(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 870
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;->injectPinDetailFragment(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    return-void
.end method

.method public bridge synthetic inject(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 863
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$PinDetailFragmentSubcomponentImpl;->inject(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;)V

    return-void
.end method
