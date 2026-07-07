.class Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment$PageRowFragmentFactory;
.super Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;
.source "MainHomePageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PageRowFragmentFactory"
.end annotation


# instance fields
.field private final mBackgroundManager:Landroidx/leanback/app/BackgroundManager;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BackgroundManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backgroundManager"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroidx/leanback/app/BrowseSupportFragment$FragmentFactory;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/tv/MainHomePageFragment$PageRowFragmentFactory;->mBackgroundManager:Landroidx/leanback/app/BackgroundManager;

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroidx/fragment/app/Fragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
