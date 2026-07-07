.class public interface abstract Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent;
.super Ljava/lang/Object;
.source "MainActivityModule_ContributeTvHomePageActivity.java"

# interfaces
.implements Ldagger/android/AndroidInjector;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/magoware/magoware/webtv/di/FragmentBuildersModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TvHomePageActivitySubcomponent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/di/MainActivityModule_ContributeTvHomePageActivity$TvHomePageActivitySubcomponent$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/android/AndroidInjector<",
        "Lcom/magoware/magoware/webtv/mobile_homepage/tv/TvHomePageActivity;",
        ">;"
    }
.end annotation
