.class final Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentFactory;
.super Ljava/lang/Object;
.source "DaggerAppComponent.java"

# interfaces
.implements Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeNewsDetailFragment$NewsDetailFragmentSubcomponent$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NewsDetailFragmentSubcomponentFactory"
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

    .line 656
    iput-object p1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentFactory;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentFactory;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;)V

    return-void
.end method


# virtual methods
.method public create(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;)Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeNewsDetailFragment$NewsDetailFragmentSubcomponent;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 660
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    new-instance v0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentImpl;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentFactory;->this$1:Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentImpl;-><init>(Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl;Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;Lcom/magoware/magoware/webtv/di/DaggerAppComponent$1;)V

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

    .line 656
    check-cast p1, Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;

    invoke-virtual {p0, p1}, Lcom/magoware/magoware/webtv/di/DaggerAppComponent$HomePageActivitySubcomponentImpl$NewsDetailFragmentSubcomponentFactory;->create(Lcom/magoware/magoware/webtv/mobile_homepage/news/ui/NewsDetailFragment;)Lcom/magoware/magoware/webtv/di/FragmentBuildersModule_ContributeNewsDetailFragment$NewsDetailFragmentSubcomponent;

    move-result-object p1

    return-object p1
.end method
