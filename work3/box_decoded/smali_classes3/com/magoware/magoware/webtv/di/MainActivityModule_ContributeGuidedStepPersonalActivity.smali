.class public abstract Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity;
.super Ljava/lang/Object;
.source "MainActivityModule_ContributeGuidedStepPersonalActivity.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindAndroidInjectorFactory(Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent$Factory;)Ldagger/android/AndroidInjector$Factory;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ldagger/multibindings/ClassKey;
        value = Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeGuidedStepPersonalActivity$GuidedStepPersonalActivitySubcomponent$Factory;",
            ")",
            "Ldagger/android/AndroidInjector$Factory<",
            "*>;"
        }
    .end annotation
.end method
