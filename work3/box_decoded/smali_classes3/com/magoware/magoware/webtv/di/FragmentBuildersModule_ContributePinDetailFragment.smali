.class public abstract Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment;
.super Ljava/lang/Object;
.source "FragmentBuildersModule_ContributePinDetailFragment.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment$PinDetailFragmentSubcomponent;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment$PinDetailFragmentSubcomponent;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract bindAndroidInjectorFactory(Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment$PinDetailFragmentSubcomponent$Factory;)Ldagger/android/AndroidInjector$Factory;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation runtime Ldagger/multibindings/ClassKey;
        value = Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;
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
            "Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributePinDetailFragment$PinDetailFragmentSubcomponent$Factory;",
            ")",
            "Ldagger/android/AndroidInjector$Factory<",
            "*>;"
        }
    .end annotation
.end method
