.class public Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile_ViewBinding;
.super Ljava/lang/Object;
.source "MainVodActivityMobile_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "target"
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile_ViewBinding;-><init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "source"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    .line 30
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0b066e

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 31
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f0b019d

    const-string v2, "field \'mViewPager\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 32
    const-class v0, Lcom/google/android/material/tabs/TabLayout;

    const v1, 0x7f0b03c5

    const-string v2, "field \'mainTabs\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mainTabs:Lcom/google/android/material/tabs/TabLayout;

    .line 33
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0b056f

    const-string v2, "field \'fabSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 34
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0b0570

    const-string v2, "field \'fabMovieSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 35
    const-class v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const v1, 0x7f0b0572

    const-string v2, "field \'fabTvShowSearch\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 36
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0571

    const-string v2, "field \'searchMovieTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    .line 37
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0b0573

    const-string v2, "field \'searchTvShowTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile_ViewBinding;->target:Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;

    .line 47
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 48
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 49
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->mainTabs:Lcom/google/android/material/tabs/TabLayout;

    .line 50
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 51
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabMovieSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 52
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->fabTvShowSearch:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 53
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchMovieTextView:Landroid/widget/TextView;

    .line 54
    iput-object v1, v0, Lcom/magoware/magoware/webtv/vod/mobile/activities/MainVodActivityMobile;->searchTvShowTextView:Landroid/widget/TextView;

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
