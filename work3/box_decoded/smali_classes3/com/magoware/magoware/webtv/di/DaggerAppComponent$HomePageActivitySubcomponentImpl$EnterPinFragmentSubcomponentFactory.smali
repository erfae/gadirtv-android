.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentFactory;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeEnterPinFragment$EnterPinFragmentSubcomponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EnterPinFragmentSubcomponentFactory"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;


# direct methods
.method private constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentFactory;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 929
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentFactory;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeEnterPinFragment$EnterPinFragmentSubcomponent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 933
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentFactory;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ldagger/android/AndroidInjector;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 929
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$EnterPinFragmentSubcomponentFactory;->create(Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;)Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeEnterPinFragment$EnterPinFragmentSubcomponent;

    move-result-object p1

    return-object p1
.end method
