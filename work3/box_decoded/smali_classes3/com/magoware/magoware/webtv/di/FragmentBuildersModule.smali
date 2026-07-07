.class public abstract Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;
.super Ljava/lang/Object;
.source "FragmentBuildersModule.kt"


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
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\'J\u0008\u0010\u0005\u001a\u00020\u0006H\'J\u0008\u0010\u0007\u001a\u00020\u0008H\'J\u0008\u0010\t\u001a\u00020\nH\'J\u0008\u0010\u000b\u001a\u00020\u000cH\'J\u0008\u0010\r\u001a\u00020\u000eH\'J\u0008\u0010\u000f\u001a\u00020\u0010H\'J\u0008\u0010\u0011\u001a\u00020\u0012H\'J\u0008\u0010\u0013\u001a\u00020\u0014H\'J\u0008\u0010\u0015\u001a\u00020\u0016H\'J\u0008\u0010\u0017\u001a\u00020\u0018H\'J\u0008\u0010\u0019\u001a\u00020\u001aH\'J\u0008\u0010\u001b\u001a\u00020\u001cH\'J\u0008\u0010\u001d\u001a\u00020\u001eH\'J\u0008\u0010\u001f\u001a\u00020 H\'J\u0008\u0010!\u001a\u00020\"H\'\u00a8\u0006#"
    }
    d2 = {
        "Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;",
        "",
        "()V",
        "contributeAccountFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;",
        "contributeAccountInfoFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;",
        "contributeAccountNotificationFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;",
        "contributeAccountPasswordFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;",
        "contributeAccountPurchasesFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment;",
        "contributeAccountSubscriptionsFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;",
        "contributeChangePinFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;",
        "contributeChangePlayerFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;",
        "contributeEnterPinFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;",
        "contributeGuidedStepPersonalFragment",
        "Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;",
        "contributeHomeFeedFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;",
        "contributeHomePageRows",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;",
        "contributeNewsDetailFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;",
        "contributeNewsFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;",
        "contributePinDetailFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;",
        "contributeSettingsFragment",
        "Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;",
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contributeAccountFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/ui/AccountFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeAccountInfoFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/info/ui/AccountInfoFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeAccountNotificationFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountNotificationFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeAccountPasswordFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/AccountPasswordFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeAccountPurchasesFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/purchases/ui/AccountPurchasesFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeAccountSubscriptionsFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/subscription/ui/AccountSubscriptionsFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeChangePinFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePinFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeChangePlayerFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/ChangePlayerFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeEnterPinFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/EnterPinFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeGuidedStepPersonalFragment()Lcom/magoware/magoware/webtv/account/tv_settings/GuidedStepPersonalFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeHomeFeedFragment()Lcom/magoware/magoware/webtv/mobile_homepage/homepage/carousels/ui/HomeFeedFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeHomePageRows()Lcom/magoware/magoware/webtv/mobile_homepage/tv/HomePageRows;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeNewsDetailFragment()Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeNewsFragment()Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributePinDetailFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/PinDetailFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method

.method public abstract contributeSettingsFragment()Lcom/magoware/magoware/webtv/mobile_homepage/account/settings/SettingsFragment;
    .annotation runtime Ldagger/android/ContributesAndroidInjector;
    .end annotation
.end method
