.class public abstract Lcom/magoware/magoware/webtv/di/MainActivityModule;
.super Ljava/lang/Object;
.source "MainActivityModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\'J\u0008\u0010\u0005\u001a\u00020\u0006H\'J\u0008\u0010\u0007\u001a\u00020\u0008H\'\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/di/MainActivityModule;",
        "",
        "()V",
        "contributeGuidedStepPersonalActivity",
        "Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;",
        "contributeMainActivity",
        "Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;",
        "contributeTvHomePageActivity",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
        "app_dmcenterRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contributeGuidedStepPersonalActivity()Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalActivity;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
        modules = {
            Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;
        }
    .end annotation
.end method

.method public abstract contributeMainActivity()Lcom/magoware/magoware/webtv/mobile_homepage/HomePageActivity;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
        modules = {
            Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;
        }
    .end annotation
.end method

.method public abstract contributeTvHomePageActivity()Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
        modules = {
            Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;
        }
    .end annotation
.end method
