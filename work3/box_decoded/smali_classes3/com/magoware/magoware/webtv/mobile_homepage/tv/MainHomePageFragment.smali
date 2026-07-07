.class public Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;
.super Landroidx/leanback/app/BrowseSupportFragment;
.source "MainHomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment$PageRowFragmentFactory;
    }
.end annotation


# instance fields
.field private mBackgroundManager:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment;-><init>()V

    return-void
.end method

.method private loadData()V
    .locals 0

    return-void
.end method

.method private setupUi()V
    .locals 2

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->setHeadersState(I)V

    .line 30
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->setBrandColor(I)V

    const-string v0, "tibo"

    .line 31
    invoke-virtual {p0, v0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 19
    invoke-super {p0, p1}, Landroidx/leanback/app/BrowseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->setupUi()V

    .line 21
    invoke-direct {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->loadData()V

    .line 22
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/leanback/app/BackgroundManager;->getInstance(Landroid/app/Activity;)Landroidx/leanback/app/BackgroundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    .line 23
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/leanback/app/BackgroundManager;->attach(Landroid/view/Window;)V

    .line 24
    invoke-virtual {p0}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->getMainFragmentRegistry()Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;

    move-result-object p1

    const-class v0, Landroidx/leanback/widget/PageRow;

    new-instance v1, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment$PageRowFragmentFactory;

    iget-object v2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    invoke-direct {v1, v2}, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment$PageRowFragmentFactory;-><init>(Landroidx/leanback/app/BackgroundManager;)V

    invoke-virtual {p1, v0, v1}, Landroidx/leanback/app/BrowseSupportFragment$MainFragmentAdapterRegistry;->registerFragment(Ljava/lang/Class;Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;)V

    return-void
.end method
